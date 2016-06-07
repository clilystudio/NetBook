.class final Lcom/ushaqi/zhuishushenqi/ui/user/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/ChargePlan;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V

    goto :goto_0
.end method
