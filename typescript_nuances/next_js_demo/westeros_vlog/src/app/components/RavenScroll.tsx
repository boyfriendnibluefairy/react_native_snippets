// define the fetched data properties.
// To do this, you have to examine the sample json data
// from the remote server
interface Scroll {
    id: number
    title: string
    body: string
}

interface RavenScrollProperties {
    scroll: Scroll
}

export default function RavenScroll(scroll:RavenScrollProperties) {
    return(
        <div className="scroll">
            <h2>{scroll.scroll.title}</h2>
            <p>{scroll.scroll.body}</p>
        </div>
    )
};
