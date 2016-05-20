.class final Lcom/ushaqi/zhuishushenqi/ui/game/y;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/GameGift;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 236
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    .line 237
    const v0, 0x7f0300ef

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 238
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 234
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/GameGift;

    .line 1251
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/model/GameGift;->title:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1252
    const/4 v0, 0x1

    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/model/GameGift;->description:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1253
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    const/4 v0, 0x2

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1254
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Landroid/view/View;)Landroid/view/View;

    .line 1255
    const/4 v1, 0x0

    .line 1256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p2, Lcom/ushaqi/zhuishushenqi/model/GameGift;->_id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->getRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1258
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1259
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;

    .line 1260
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftId:Ljava/lang/String;

    iget-object v3, p2, Lcom/ushaqi/zhuishushenqi/model/GameGift;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1261
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftCode:Ljava/lang/String;

    .line 1265
    :goto_0
    if-eqz v0, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u67e5\u770b"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f02013b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1269
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/z;

    invoke-direct {v2, p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/y;Lcom/ushaqi/zhuishushenqi/model/GameGift;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/A;

    invoke-direct {v2, p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/A;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/y;Lcom/ushaqi/zhuishushenqi/model/GameGift;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    :goto_1
    return-void

    .line 1284
    :cond_0
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/B;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/B;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/y;Lcom/ushaqi/zhuishushenqi/model/GameGift;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1292
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/C;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/C;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/y;Lcom/ushaqi/zhuishushenqi/model/GameGift;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c032b
        0x7f0c032d
        0x7f0c032c
        0x7f0c0329
    .end array-data
.end method
