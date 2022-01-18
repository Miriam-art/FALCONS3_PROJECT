public  class Rectangle {
    public integer len;
    public integer breadth;
    public Rectangle(integer intLen, integer intBreadth){
        len = intLen;
        breadth = intBreadth;
    }
    public Integer area(){
        integer area = len*breadth;
        return area;
    }
}