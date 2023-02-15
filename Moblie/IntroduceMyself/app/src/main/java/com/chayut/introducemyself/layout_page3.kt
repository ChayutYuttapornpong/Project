package com.chayut.introducemyself

import android.content.Intent
import android.net.Uri
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.MediaController
import android.widget.Toast
import android.widget.VideoView
import kotlinx.android.synthetic.main.activity_layout_page3.*

class layout_page3 : AppCompatActivity() {

    var video: VideoView? = null
    var media: MediaController? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_layout_page3)
        var back_button = findViewById<Button>(R.id.back_button1)
        video = findViewById(R.id.videoView)

        if (media == null){
            media = MediaController(this)
            media!!.setAnchorView(this.video)
        }
        video!!.setMediaController(media)
        video!!.setVideoURI(Uri.parse("android.resource://"+ packageName +"/"+ R.raw.satukarn))
        video!!.requestFocus()
        video!!.start()
        video!!.setOnCompletionListener {
            Toast.makeText(this,"Video End",Toast.LENGTH_SHORT).show()
        }
        back_button.setOnClickListener {
            val page1 = Intent(this,MainActivity::class.java)
            startActivity(page1)
            this.finish()
        }
    }
}