package mblog.util;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.IOException;
import java.io.InputStream;

/**
 * 导入Excel文件工具类
 * Created by jxt 2018.09.08
 */
public class ImportExcelUtil {

    public static boolean validateExcel(String fileName) {
        return fileName.matches("^.+\\\\.(?i)(xls)$") || fileName.matches("^.+\\\\.(?i)(xlsx)$");
    }

    public static Sheet getSheet(String fileName, InputStream inputStream) throws IOException {
        Workbook workbook = null;
        if (fileName.matches("^.+\\\\.(?i)(xlsx)$")) {
            workbook = new XSSFWorkbook(inputStream);
        } else {
            workbook = new HSSFWorkbook(inputStream);
        }
        return workbook.getSheetAt(0);
    }
}
