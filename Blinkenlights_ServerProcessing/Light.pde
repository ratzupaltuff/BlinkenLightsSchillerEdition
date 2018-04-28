class Light{
    private String ipAddr;
    private Color currentColor;

    Light(String ipAddr){
        this.ipAddr=ipAddr;
        currentColor=new Color(0);
    }

    public String getIpAddr(){
        return ipAddr;
    }

    public Color getCurrentColor(){
        return currentColor;
    }

    public void changeColor(Color c){
        currentColor=c;
    }

}
