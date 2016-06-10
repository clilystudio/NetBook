.class final Lcom/ushaqi/zhuishushenqi/ui/user/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V

    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;Z)V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 88
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    if-ne v6, v5, :cond_2

    .line 89
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;Z)V

    goto :goto_0

    .line 87
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
