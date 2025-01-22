SELECT concat('/home/grep/src/', b.BOARD_ID, '/', f.FILE_ID, f.FILE_NAME, f.FILE_EXT) file_path
from USED_GOODS_BOARD b join USED_GOODS_FILE f on b.BOARD_ID = f.BOARD_ID
where b.views in (select max(views)
                  from USED_GOODS_BOARD)
  order by f.file_id desc