package com.chayut.introducemyself


import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import kotlinx.android.synthetic.main.activity_main.*
import kotlinx.android.synthetic.main.activity_main.view.*

class MainActivity : AppCompatActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var Image_button = findViewById<ImageView>(R.id.img_button)
        var video_button = findViewById<ImageView>(R.id.video_button)
        var music_button = findViewById<ImageView>(R.id.music_button)
        var contact_button = findViewById<ImageView>(R.id.contact_button)



        Image_button.setOnClickListener {
            val page2 = Intent(this,layout_page2::class.java)
            startActivity(page2)

        }
        video_button.setOnClickListener {
            val page3 = Intent(this,layout_page3::class.java)
            startActivity(page3)

        }
        music_button.setOnClickListener {
            val page4 = Intent(this,layout_page4::class.java)
            startActivity(page4)

        }
        contact_button.setOnClickListener {
            val page5 = Intent(this,layout_page5::class.java)
            startActivity(page5)

        }
    }
}
