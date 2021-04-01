# pylint: disable=redefined-outer-name,invalid-name
import pytest
import testinfra


@pytest.mark.parametrize("container", ["gitlab"])
def test_containers_running(container, host):
    with host.sudo():
        assert host.docker(container).is_running
