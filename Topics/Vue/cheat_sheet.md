**HTML side**

    <div id="app">
        <h1>{{ product }}</h1>
        <p>{{ description }}</p>
    </div>

**JavaScript side**

    var app = new Vue({
        el: '#app',
        data: {
            product: 'Socks',
            description: 'Smelly'
        }
    })
