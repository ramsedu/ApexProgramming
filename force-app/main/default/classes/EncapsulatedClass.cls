public class EncapsulatedClass {
    private String data;
    
    public String getData() {
        return data;
    }
    
    public void setData(String newData) {
        data = newData;
        display();
    }

    private void display(){
        system.debug('Welcome!!!');
    }
}
