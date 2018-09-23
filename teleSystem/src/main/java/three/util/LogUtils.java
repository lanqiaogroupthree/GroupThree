package three.util;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
 
/**
 * Created by Rongjie on 2016/3/13.
 * Guangzhou Baoshan Technology Co,Ltd.
 */
public class LogUtils {
 
    static private Logger logger = LogManager.getLogger("testTime");
 
 
    public static void trace(Object object) {
        logger.trace(object);
    }
 
    public static void debug(Object object) {
        logger.debug(object);
    }
 
    public static void info(Object object) {
        logger.info(object);
    }
 
    public static void warn(Object object) {
        logger.warn(object);
    }
 
    public static void error(Object object) {
        logger.error(object);
    }
 
    public static void fatal(Object object) {
        logger.fatal(object);
    }
 
}
