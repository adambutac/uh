public class Graph<T>{
    public class Vertex {
        public T val;
        public int[] edges;
        public int[] verticies;

        public Vertex(T t){
            val = t;
        } 
    }

    private int size;
    public Vertex[] v;

    public Graph(int size){
        size = 0;
        v = new Vertex[size]; 
        for(Vertex x:v){
            x = null;
        }
    }

    public void add(T t, Vertex x){
        Vertex y = new Vertex(t,);
        x.add(y); 
    }

    public Vertex remove(Vertex x){
        return v[x.index];
    }
}
