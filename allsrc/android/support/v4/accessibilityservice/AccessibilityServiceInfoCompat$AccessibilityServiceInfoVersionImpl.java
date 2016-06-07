package android.support.v4.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.ResolveInfo;

abstract interface AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl
{
  public abstract boolean getCanRetrieveWindowContent(AccessibilityServiceInfo paramAccessibilityServiceInfo);

  public abstract int getCapabilities(AccessibilityServiceInfo paramAccessibilityServiceInfo);

  public abstract String getDescription(AccessibilityServiceInfo paramAccessibilityServiceInfo);

  public abstract String getId(AccessibilityServiceInfo paramAccessibilityServiceInfo);

  public abstract ResolveInfo getResolveInfo(AccessibilityServiceInfo paramAccessibilityServiceInfo);

  public abstract String getSettingsActivityName(AccessibilityServiceInfo paramAccessibilityServiceInfo);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
 * JD-Core Version:    0.6.0
 */