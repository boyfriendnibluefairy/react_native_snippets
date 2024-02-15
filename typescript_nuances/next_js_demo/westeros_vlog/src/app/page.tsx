import RavenScroll from "./components/RavenScroll";

// for fetching some fake json data
const fetchScrolls = async (): Promise<Scroll[]> => {
  const response = await fetch('http://jsonplaceholder.typicode.com/users/1/posts')

  if(!response.ok){
    console.log("Data fetching failed")
  }

  return response.json()
}

export default async function Home() {
  const scrolls = await fetchScrolls()
  return (
    <main className="flex min-h-screen flex-col items-center justify-between p-24">
      <h2>Welcome to Westeros</h2>
      {scrolls.map((scroll) => (
        <RavenScroll key={scroll.id} scroll={scroll} />
      ))}
    </main>
  );
}
