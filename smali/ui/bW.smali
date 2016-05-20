.class final Lcom/ushaqi/zhuishushenqi/ui/bW;
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
    .line 86
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bW;->b:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/bW;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bW;->b:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    const-string v1, "update_notice_key"

    invoke-static {v0, v1, p2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bW;->b:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    invoke-static {v0, p2}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Z)V

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bW;->b:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bW;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Landroid/view/View;Z)V

    .line 93
    return-void
.end method
