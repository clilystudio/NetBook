.class final Lcom/ushaqi/zhuishushenqi/ui/user/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/at;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/at;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;Z)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/at;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
