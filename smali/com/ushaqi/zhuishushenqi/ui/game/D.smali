.class final Lcom/ushaqi/zhuishushenqi/ui/game/D;
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
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    .line 190
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;)V

    .line 191
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;
    .locals 3

    .prologue
    .line 196
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

    .line 200
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 187
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;

    .line 1205
    if-eqz p1, :cond_1

    .line 1206
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;->giftCode:Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse$GiftCode;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse$GiftCode;->code:Ljava/lang/String;

    .line 1208
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Lcom/ushaqi/zhuishushenqi/model/GameGift;

    move-result-object v2

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/model/GameGift;->_id:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    const-string v2, "\u9886\u53d6\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1211
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u67e5\u770b"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f02013b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1213
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/E;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/E;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/D;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1219
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/F;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/F;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/D;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1226
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    const-string v1, "\u9886\u53d6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
