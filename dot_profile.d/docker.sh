# Create a docker context to make use of this
# docker context create remote --description "Remote host" --docker "host=unix://${HOME}/.docker/remote.sock"

# Connect to a remote Docker host
docker-remote() {
  local HOST="${1}"
  [ -n "${HOST}" ] || (echo "A host must be provided" && exit 1)

  DEST_PATH="${HOME}/.docker/remote.sock"
  trap "rm -f ${DEST_PATH}" SIGINT SIGTERM

  local REMOTE_SOCKET="${2:-/var/run/docker.sock}"
  ssh -L ${DEST_PATH}:${REMOTE_SOCKET} -N ${HOST}
  rm -f ${DEST_PATH}
}

# Connect to a remote Docker host deployed with rootless
docker-remote-rootless() {
  local HOST="${1}"
  [ -n "${HOST}" ] || (echo "A host must be provided" && exit 1)
  
  local REMOTE_UID=$(ssh ${HOST} id -u)
  REMOTE_SOCKET="/var/run/user/${REMOTE_UID}/docker.sock"

  docker-remote ${HOST} ${REMOTE_SOCKET}
}

