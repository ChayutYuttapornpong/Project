package com.chayut.introducemyself

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageView
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import com.chayut.introducemyself.adapter.adt
import kotlinx.android.synthetic.main.activity_layout_page2.*

class layout_page2 : AppCompatActivity() {

        private val arrName = ArrayList<String>()
        private val arrURL = ArrayList<String>()
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_layout_page2)


        arrName.add("1")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.18169-9/19029208_1232967820147606_7862463657550412323_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=19026a&_nc_eui2=AeGVkALfIEraBOn9uk40eSFbWH2j7NfKMNpYfaPs18ow2oD1T8rMxxo7rK5T2Um-fVYPnsXd-fHBUtf9R-_xbKfB&_nc_ohc=HqyTdj0uSOwAX9boRFp&tn=AKVnZw_ihPq9HJW4&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfATbJEUxgEuKlCeQSy_9fmxP2yzUlpikR1o9Bfsy1Vorg&oe=63E28E9A")
        arrName.add("2")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.18169-9/22728727_1322827357828193_7458080502259969167_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeG8rwqS0uYo283ogwJGw-78gB41DU0bmRiAHjUNTRuZGHv24j0-DVw36eYOG8Gwg2OFkHT8iFUCcv3nqhr2Zs4Z&_nc_ohc=RY9fGEw25TQAX9IpltY&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfA-3xIrxmPDbgSs6qPj_HcEkQ0eyb4ymsnGNsurvins7A&oe=63E26251")
        arrName.add("3")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.6435-9/60915485_2332388540362623_6865062488837193728_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEJUgPAJA-I8xo_VeXX1yaV8m6MkEY0H_DyboyQRjQf8HIA4pyTWx9aTFtpZA6IfvO38jQAuPtHNlpeROGPluCW&_nc_ohc=IdlMCYVIuGkAX86bxEH&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfC4JVgnl7mW2q4aGYLwMqAw0E8Dw6o5jUmG7lTaPHMR_Q&oe=63EADD64")
        arrName.add("4")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.18169-9/26239595_2018843148383832_2685470229972509719_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=19026a&_nc_eui2=AeF4gxi7dT_-jXE2cDmO3vjtE4x1wFQIhw0TjHXAVAiHDeXhLzYmXab02ain6ZisViJWjsT3c72lQ-uWwGQG-Qwu&_nc_ohc=4YnEL1I4UKsAX-Q5sV5&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfCT-wZClvKmdpLeZjKQz7HbvMz18m1Rt3_LQEt7dpzeQw&oe=63EAF97D")
        arrName.add("5")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.6435-9/56935198_10156204627327546_4539735712672514048_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeG4m7mnytQGTuc79rmqxAvSeOPP_wx87fB448__DHzt8Hd5xRedDLdcH4mjy7cp9E_H1fsmqckykcRuyZYR9_8c&_nc_ohc=dHbGlvpc-y0AX-pyhuq&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfCPf9b3_lcGz5tiGYc_0TiM0W-wzCX9350gGGjmYdLEhw&oe=63E26675")
        arrName.add("6")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.6435-9/65928037_2083955948381993_4037492789812920320_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=cdbe9c&_nc_eui2=AeHZgbUkOgosUxabaL9SyBm5skRMTcDk2OGyRExNwOTY4cgAS-grNwiYIpXTea-2qUT_hV_m-rYyH9S4HmfMWPZ0&_nc_ohc=JamNz4UKYg0AX_V0MNz&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfBigJbUJ2Iod6LaVMw0BRbp-RSeDwKeime8OYJp0qMWgg&oe=63E270F5")
        arrName.add("7")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.6435-9/76702457_758928864575512_5182074283974721536_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEZA2blSbiRAtChsgpkOgdWNwjxydNwnik3CPHJ03CeKRzybmK2ob8npkgqpxccfUaD2v55SYCuuQS-NnGHQrUy&_nc_ohc=HzeoFOJ77soAX80_7vp&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfDoOn-s5Ey1VKfFwpr0-00ZR4k4GK96cWQ88TpZnX0dSA&oe=63E28091")
        arrName.add("8")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t31.18172-8/28336650_2038515076416639_283517306899077102_o.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGuWTsDto7TXyJAWmz6lg_p_IiioL3uXd78iKKgve5d3sp63LLP3dLz9i9yR9jk4wRLbJlse2Q1SGawVGfVG2_S&_nc_ohc=w5yXLtSAqnQAX_u9M-o&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfAYm5qvaXR2lVcFcyIVd1w9HXUzoI-VcDbMwA-lhivHow&oe=63EA2AC3")
        arrName.add("9")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t39.30808-6/298704786_3289632494638218_8557312628065333445_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=19026a&_nc_eui2=AeGhwcQ4pbCgqgIBICvcMVhZpnKdXZL3pd2mcp1dkvel3TqTcwIhWISEIQDB1I9kBx6pyFVMGWw40y5YcvFh4hAa&_nc_ohc=rmuHIlIXzbYAX_N_jy8&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfBGMs4RW4AQHX3P3EdvVESLNOJmLViuoVNKKDzWnaluyw&oe=63CA18C2")
        arrName.add("10")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.6435-9/50310981_2251842308417247_7388097301132083200_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGi88mpydV56YUh13Zk8IvxOyg9V_Z_3Vo7KD1X9n_dWlveno16Zf65jxayKeOvLxCRubkIrIAYAvQMU4jkCrpu&_nc_ohc=QtRUu8HrRJwAX89U9as&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfAkJFOc1y8UjQT0txIQbfra1O_hiFADRqgYDCJWMMrIWw&oe=63E28133")
        arrName.add("11")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.6435-9/82924089_2541341389467336_4430720745391259648_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=19026a&_nc_eui2=AeFFnE1VG9nJCZ6G6Yhunzsw8mEcD04T8nTyYRwPThPydPsn-ieNBU_fItNKTjvd_AgdlyErKaWUciwzXPiphaFU&_nc_ohc=55ghZLOs-mIAX93R92w&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfA6iGCSkSqGkL0NDqNnVKz6VSswjnWK_D9bP1YDvSE6jA&oe=63E26EB1")
        arrName.add("12")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t39.30808-6/317806532_3382712241996909_7427394550165634751_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeGlG3qxfAPPt3rEszVThekbVZOrA9WOTqlVk6sD1Y5OqTp1o-eH2nuJf-ylhpQZQcTjthaTNGVG7vNY1qced5aj&_nc_ohc=aHLFqgawDvAAX_d4f1h&tn=AKVnZw_ihPq9HJW4&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfAmsV1nua7b6bwqUbSxifqTkC2jyzrD-frKd7r8mzdxKQ&oe=63CA8CF7")
        arrName.add("13")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t39.30808-6/318309156_3386190064982460_3848123732884186842_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH4VCu0mu__dZz3qtMMBmb6hDkqliOpZaCEOSqWI6lloIhTgo4J6_s93RNypUDZSCCoDSPHhHwSC-dp-o9F2c8f&_nc_ohc=pRfka2Q2nIwAX-T_tXC&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfABcmvD4qzrI9tp0_hNfGs6l8vnzFHoADI9pozIbV0G5A&oe=63C9A830")
        arrName.add("14")
        arrURL.add("https://scontent.fbkk28-1.fna.fbcdn.net/v/t39.30808-6/324925173_865079724706397_2709634409964920372_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeG9y3ZGCdugPdPSrY__BIVTRIlAd1Gk_f1EiUB3UaT9_bGYMiMTAxmiq1YclCW_LIvFb66ivAI0JiZhjbXVh4LB&_nc_ohc=zbpUFJJKSIQAX-AjKzJ&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfBAi7h9KuBTzrewICfgqBZnP2DVZwO79rEx6WYheX3wgg&oe=63C77FB6")
        val adapter = adt(this,arrName,arrURL)
        recyclerview.adapter = adapter
        recyclerview.layoutManager = GridLayoutManager(this,2)

        var Back_button = findViewById<Button>(R.id.back_button)
        back_button.setOnClickListener{
            val page1 = Intent(this,MainActivity::class.java)
            startActivity(page1)
            this.finish()
        }
    }
}