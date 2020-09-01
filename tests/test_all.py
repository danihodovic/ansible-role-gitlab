# pylint: disable=redefined-outer-name,invalid-name
import pytest
import testinfra


@pytest.fixture
def docker_host(host):
    def fn(container_name):
        container = host.docker(container_name)
        assert container.is_running
        return testinfra.get_host(f"docker://{container.id}")

    return fn


@pytest.mark.parametrize("container", ["gitlab"])
def test_containers_running(container, host):
    assert host.docker(container).is_running


def test_health_check(docker_host):
    h = docker_host("gitlab")
    h.run_test("curl --fail localhost/-/readiness?all=1")
