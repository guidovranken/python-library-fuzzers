import io
import tarfile

def FuzzerRunOne(FuzzerInput):
    try:
        with tarfile.open(fileobj=io.BytesIO(FuzzerInput), ignore_zeros=True, errorlevel=0) as tf:
            for tarinfo in tf:
                tarinfo.name
                tarinfo.size
                tarinfo.mtime
                tarinfo.mode
                tarinfo.type
                tarinfo.uid
                tarinfo.gid
                tarinfo.uname
                tarinfo.gname
    except tarfile.TarError:
        return

