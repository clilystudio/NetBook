.class final Lcom/ushaqi/zhuishushenqi/widget/Y;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/Y;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    .line 185
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;)V

    .line 186
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;
    .locals 3

    .prologue
    .line 191
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/widget/Y;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 182
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;

    .line 1200
    if-eqz p1, :cond_1

    .line 1201
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;->giftCode:Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse$GiftCode;

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse$GiftCode;->code:Ljava/lang/String;

    .line 1203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Y;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->c(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/Y;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->d(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;)Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    move-result-object v2

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->_id:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Y;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Y;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v2, "\u9886\u53d6\u6210\u529f"

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Y;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->b(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Ljava/lang/String;)V

    .line 1208
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Y;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Y;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u9886\u53d6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
