import java.io.Serializable;

public class BeanTest {

    public static void main(String[] args) {

        Album album1 = new Album(1, "Sublime", "Sublime", 1996, 5.5, "Ska punk");
        Album album2 = new Album();

        album2.setId(2);
        album2.setArtist("Fall Out Boy");
        album2.setName("From Under the Cork Tree");
        album2.setReleaseDate(2003);
        album2.setSales(2.7F);
        album2.setGenre("Punk");

        Quote quote1 = new Quote(1, "If you're going through hell, keep going.", "Winston Churchill");
        Quote quote2 = new Quote();

        quote2.setId(2);
        quote2.setContent("Everything should be made as simple as possible, but not simple.");
        quote2.setAuthor("Albert Einstein");

        Author author1 = new Author(1, "Douglas", "Adams");
        Author author2 = new Author();

        author2.setId(2);
        author2.setFirstName("Kurt");
        author2.setLastName("Vonnegut");


    }
}
