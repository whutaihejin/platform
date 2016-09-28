package echo;

/**
 * Created by zhanglonghanks on 16/9/28.
 */

import org.apache.thrift.TException;

import java.text.SimpleDateFormat;
import java.util.Date;

public class EchoHandler implements EchoService.Iface {

    private static final String TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static final SimpleDateFormat FORMATER = new SimpleDateFormat(TIME_FORMAT);

    private String time() {
        return FORMATER.format(new Date());
    }

    private String time(String name) {
        return String.format("%s %s", FORMATER.format(new Date()), name);
    }

    @Override
    public int multiply(int x, int y) throws TException {
        int product = x * y;
        System.out.println(String.format("call multiply %d * %d return %d", x, y, product));
        return product;
    }

    @Override
    public String echo(String name) throws TException {
        String ret = String.format("%s now time is %s", name, time());
        System.out.println(String.format("call echo %s return %s", name, ret));
        return ret;
    }
}
