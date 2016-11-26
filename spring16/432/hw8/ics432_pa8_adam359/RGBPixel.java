public class RGBPixel{
    public byte red;
    public byte green;
    public byte blue;

    public RGBPixel(){
        red = 0;
        green = 0;
        blue = 0;
    }

    public RGBPixel(int rgb){
        byte[] temp = intToBytes(rgb);
        red = temp[0];
        green = temp[1];
        blue = temp[2];
    }

    public RGBPixel(byte r, byte g, byte b){
        red = r;
        green = g;
        blue = b;
    }

    public int asInt(){
        byte[] temp = {red, green, blue};
        return bytesToInt(temp);
    }

	private static int bytesToInt(byte bytes[]) {
		int value = 0;
		for (int i = 0; i < bytes.length; i++) {
			int shift = (bytes.length - 1 - i) * 8;
			value += (bytes[i] & 0x000000FF) << shift;
		}
		return value;
	}

	private static byte[] intToBytes(int rgb) {
		byte[] bytes = new byte[3];
		for (int i = 0; i < 3; i++) {
			int offset = (2 - i) * 8;
			bytes[i] = (byte) ((rgb >>> offset) & 0xFF);
		}
		return bytes;
	}
}
