package echo;

import org.apache.thrift.TException;
import org.apache.thrift.protocol.TBinaryProtocol;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.transport.TSocket;
import org.apache.thrift.transport.TTransport;

/**
 * Created by zhanglonghanks on 16/9/28.
 */
public class EchoClient {

    public static void main(String[] args) throws Exception {
        TTransport transport = new TSocket("10.94.106.180", 9090);
        transport.open();
        TProtocol protocol = new TBinaryProtocol(transport);
        EchoService.Client client = new EchoService.Client(protocol);
        action(client);
        transport.close();
    }

    public static void action(EchoService.Client client) throws TException {
        int product = client.multiply(3, 5);
        String hello = client.echo("taihejin");
        System.out.println(String.format("3 * 5 = %d echo %s", product, hello));
    }
}
