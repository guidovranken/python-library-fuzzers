import io
import zipfile

def FuzzerRunOne(FuzzerInput):
    try:
        with zipfile.ZipFile(io.BytesIO(FuzzerInput), strict_timestamps=False) as zf:
            for info in zf.infolist():
                info.filename
                info.date_time
                info.compress_type
                info.comment
                info.extra
                info.create_system
                info.create_version
                info.extract_version
                info.reserved
                info.flag_bits
                info.volume
                info.internal_attr
                info.external_attr
                info.header_offset
                info.CRC
                info.compress_size
                info.file_size
    except tzipfile.BadZipFile:
        return

