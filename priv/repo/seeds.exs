# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Teacher.Repo.insert!(%Teacher.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Teacher.Records

album_data = [
  %{
    artist: "The Beatles",
    title: "Abbey Road",
    year: "1969",
    summary: "Abbey Road is the eleventh album by English rock band the Beatles, released on 26 September 1969 by Apple Records. The recording sessions for the album were the last in which all four Beatles participated. Although Let It Be was the final album that the Beatles completed before the band's dissolution in April 1970"
  },
  %{
    artist: "Led Zeppelin",
    title: "Untitled",
    year: "1971",
    summary: "English rock band Led Zeppelin's untitled fourth album, commonly known as Led Zeppelin IV, was released on 8 November 1971 by Atlantic Records. Produced by guitarist Jimmy Page, it was recorded between November 1970 and January 1971 at several locations, most prominently the Victorian house Headley Grange."
  },
  %{
    artist: "Miles Davis",
    title: "Kind Of Blue",
    year: "1959",
    summary: "Kind of Blue is a studio album by American jazz trumpeter Miles Davis. It is regarded by many critics as jazz's greatest record, Davis's masterpiece, and one of the best albums of all time. Its influence on music, including jazz, rock, and classical genres, has led writers to also deem it one of the most influential albums ever recorded."
  }
]

Enum.each(album_data, fn(data) -> 
  Records.create_album!(data)
end)

# Records.create_album!(
#   %{title: "Blonde on Blonde", artist: "Bob Dylan", year: "1966", summary: "Blonde on Blonde is the seventh studio album by American singer-songwriter Bob Dylan, released in mid 1966, on Columbia Records. Recording sessions began in New York in October 1965 with numerous backing musicians, including members of Dylan's live backing band, the Hawks."}
# )
