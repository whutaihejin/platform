package echo;

import com.lexicalscope.jewel.cli.CliFactory;
import com.lexicalscope.jewel.cli.Option;
import org.apache.thrift.TException;
import org.apache.thrift.protocol.TBinaryProtocol;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.transport.TSocket;
import org.apache.thrift.transport.TTransport;

/**
 * Created by zhanglonghanks on 16/9/28.
 */
public class EchoClient {

    public interface ClientArgs {

        @Option(shortName = "h", longName = "host", defaultValue = "127.0.0.1")
        String host();

        @Option(shortName = "p", longName = "port", defaultValue = "9090")
        int port();
    }

    public static void main(String[] args) throws Exception {
        ClientArgs cli = CliFactory.parseArguments(ClientArgs.class, args);
        TTransport transport = new TSocket(cli.host(), cli.port());
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
