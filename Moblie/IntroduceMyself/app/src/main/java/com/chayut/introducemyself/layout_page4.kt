package com.chayut.introducemyself

import android.content.Intent
import android.media.MediaPlayer
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Handler
import android.util.Log
import android.widget.Button
import android.widget.SeekBar
import com.google.android.material.floatingactionbutton.FloatingActionButton
import kotlinx.android.synthetic.main.activity_layout_page4.*

class layout_page4 : AppCompatActivity() {

    private lateinit var runnable: Runnable
    private var handler = Handler()
    private var mp: MediaPlayer? = null
    private var song = mutableListOf(R.raw.inside_joke)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_layout_page4)
        controlSound1(song[0])
        var seekbar = findViewById<SeekBar>(R.id.seekBar2)
        var fab_play = findViewById<FloatingActionButton>(R.id.fab_play2)
        var fab_pause = findViewById<FloatingActionButton>(R.id.fab_pause2)
        var fab_stop = findViewById<FloatingActionButton>(R.id.fab_stop2)
        var mediaPlayer = MediaPlayer.create(this,R.raw.spring_thief)
        val back_button = findViewById<Button>(R.id.back_button2)
        seekbar.progress = 0
        seekbar.max = mediaPlayer.duration

        fab_play.setOnClickListener{
                mediaPlayer.start()
        }
        fab_pause.setOnClickListener{
                mediaPlayer.pause()

        }
        fab_stop.setOnClickListener{
                mediaPlayer.stop()
                mediaPlayer = MediaPlayer.create(this,R.raw.spring_thief)

        }
    seekbar.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener{
        override fun onProgressChanged(p0: SeekBar?, p1: Int, p2: Boolean) {
            if (p2){
                mediaPlayer.seekTo(p1)
            }
        }

        override fun onStartTrackingTouch(p0: SeekBar?) {

        }

        override fun onStopTrackingTouch(p0: SeekBar?) {

        }

    })
        runnable = Runnable{
            seekbar.progress = mediaPlayer.currentPosition
            handler.postDelayed(runnable,1000)
        }
        handler.postDelayed(runnable,1000)
        mediaPlayer.setOnCompletionListener {
            mediaPlayer.pause()
        }

        back_button2.setOnClickListener {
            val page1 = Intent(this,MainActivity::class.java)
            startActivity(page1)
            mp?.stop()
            mediaPlayer.stop()
            this.finish()
        }
    }
    private fun controlSound1(id: Int){
        fab_play1.setOnClickListener{
            if (mp == null){
                mp = MediaPlayer.create(this,id)
                Log.d("layout_page4","ID: ${mp!!.audioSessionId}")

                initialiseSeekBar()
            }
            mp?.start()
            Log.d("layout_page4","Duration: ${mp!!.duration / 1000} second")
        }
        fab_pause1.setOnClickListener{
            if (mp !== null) mp?.pause()
            Log.d("layout_page4","Pause at: ${mp!!.currentPosition / 1000} second" )
        }
        fab_stop1.setOnClickListener{
            if (mp !== null){
                mp?.stop()
                mp?.reset()
                mp?.release()
                mp = null
            }
        }

        seekBar1.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener{
            override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) {
                if (fromUser) mp?.seekTo(progress)
            }

            override fun onStartTrackingTouch(p0: SeekBar?) {

            }

            override fun onStopTrackingTouch(p0: SeekBar?) {

            }

        })
    }
        private fun initialiseSeekBar(){

            seekBar1.max = mp!!.duration

            val handler = Handler()
            handler.postDelayed(object : Runnable{
                override fun run() {
                    try {
                        seekBar1.progress = mp!!.currentPosition
                        handler.postDelayed(this,1000)
                    }
                    catch (e: Exception){
                        seekBar1.progress = 0
                    }
                }
            }, 0)
        }


}