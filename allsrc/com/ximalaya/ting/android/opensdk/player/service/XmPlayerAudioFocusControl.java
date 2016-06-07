package com.ximalaya.ting.android.opensdk.player.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

public class XmPlayerAudioFocusControl
{
  private AudioManager.OnAudioFocusChangeListener audioFoucusListener = new XmPlayerAudioFocusControl.4(this);
  private AudioManager audioManager;
  private BroadcastReceiver mBroadcastReceiver = new XmPlayerAudioFocusControl.2(this);
  private BroadcastReceiver mBroadcastReceiverPhoneCall = new XmPlayerAudioFocusControl.3(this);
  private Context mContext;
  private PhoneStateListener mPhoneStateListener = new XmPlayerAudioFocusControl.1(this);
  private boolean telPauseFlag = false;
  private TelephonyManager telephonyManager;
  private TelephonyManager telephonyManager1;
  private TelephonyManager telephonyManager2;

  public XmPlayerAudioFocusControl(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
    initListener();
  }

  private void callStateIdle()
  {
    XmPlayerService localXmPlayerService = XmPlayerService.getPlayerSrvice();
    if ((localXmPlayerService != null) && (localXmPlayerService.isPlaying()) && (this.telPauseFlag))
      localXmPlayerService.startPlay();
    this.telPauseFlag = false;
  }

  private void callStateRinging()
  {
    XmPlayerService localXmPlayerService = XmPlayerService.getPlayerSrvice();
    if ((localXmPlayerService != null) && (localXmPlayerService.isPlaying()))
    {
      this.telPauseFlag = true;
      localXmPlayerService.pausePlay();
    }
  }

  private void initListener()
  {
    if (this.mContext == null)
      return;
    this.audioManager = ((AudioManager)this.mContext.getSystemService("audio"));
    IntentFilter localIntentFilter1 = new IntentFilter();
    localIntentFilter1.addAction("android.intent.action.HEADSET_PLUG");
    localIntentFilter1.addAction("android.media.AUDIO_BECOMING_NOISY");
    localIntentFilter1.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    this.mContext.registerReceiver(this.mBroadcastReceiver, localIntentFilter1);
    initTelephonyManager();
    IntentFilter localIntentFilter2 = new IntentFilter();
    this.mContext.registerReceiver(this.mBroadcastReceiverPhoneCall, localIntentFilter2);
  }

  private void initTelephonyManager()
  {
    this.telephonyManager = ((TelephonyManager)this.mContext.getSystemService("phone"));
    this.telephonyManager.listen(this.mPhoneStateListener, 32);
    try
    {
      this.telephonyManager1 = ((TelephonyManager)this.mContext.getSystemService("phone1"));
      this.telephonyManager1.listen(this.mPhoneStateListener, 32);
      try
      {
        label58: this.telephonyManager2 = ((TelephonyManager)this.mContext.getSystemService("phone2"));
        this.telephonyManager2.listen(this.mPhoneStateListener, 32);
        return;
      }
      catch (Exception localException2)
      {
        return;
      }
    }
    catch (Exception localException1)
    {
      break label58;
    }
  }

  public AudioManager getAudioManager()
  {
    return this.audioManager;
  }

  public void setAudioFocusAtPauseState()
  {
    this.audioManager.requestAudioFocus(this.audioFoucusListener, 3, -1);
  }

  public void setAudioFocusAtStartState()
  {
    this.audioManager.requestAudioFocus(this.audioFoucusListener, 3, 1);
  }

  public void setAudioFocusAtStopState()
  {
    this.audioManager.abandonAudioFocus(this.audioFoucusListener);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerAudioFocusControl
 * JD-Core Version:    0.6.0
 */