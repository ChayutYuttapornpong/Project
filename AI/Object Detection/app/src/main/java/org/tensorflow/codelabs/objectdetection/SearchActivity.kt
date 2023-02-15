package org.tensorflow.codelabs.objectdetection


import android.os.Bundle
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.appcompat.app.AppCompatActivity

class SearchActivity : AppCompatActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_search)

        val myWeb = findViewById<WebView>(R.id.webview)

        myWeb.webViewClient = WebViewClient()

        myWeb.apply {
            loadUrl("http://www.google.com")
            settings.javaScriptEnabled = true
        }


}

    }
