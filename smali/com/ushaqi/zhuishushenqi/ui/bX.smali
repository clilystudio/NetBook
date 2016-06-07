.class final Lcom/ushaqi/zhuishushenqi/ui/bX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/SwitchCompat;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Landroid/support/v7/widget/SwitchCompat;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bX;->b:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/bX;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bX;->b:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    const-string v1, "save_bandwidth"

    invoke-static {v0, v1, p2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bX;->b:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bX;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Landroid/view/View;Z)V

    .line 100
    return-void
.end method
