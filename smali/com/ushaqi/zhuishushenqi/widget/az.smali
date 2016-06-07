.class final Lcom/ushaqi/zhuishushenqi/widget/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/az;->a:Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/az;->a:Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/az;->a:Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;->a(Lcom/ushaqi/zhuishushenqi/widget/SettingCheckBox;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 39
    if-eqz p2, :cond_0

    .line 40
    const-string v0, "\u5df2\u5f00\u542f"

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, "\u5df2\u5173\u95ed"

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
