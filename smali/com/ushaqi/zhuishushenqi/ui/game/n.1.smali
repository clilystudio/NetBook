.class final Lcom/ushaqi/zhuishushenqi/ui/game/n;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 393
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    .line 394
    const v0, 0x7f0300ee

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 395
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 391
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;

    .line 1413
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->get_id()Ljava/lang/String;

    move-result-object v2

    .line 1414
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    .line 1415
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02006e

    invoke-virtual {v0, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 1417
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1418
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 1419
    invoke-virtual {p0, v5, v6}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(IZ)Landroid/view/View;

    .line 1420
    const-string v3, "male"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1421
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1441
    :goto_0
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1442
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1443
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v9, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1444
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/o;

    invoke-direct {v1, p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/o;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/n;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1450
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1451
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->getCommentCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1452
    const/16 v0, 0x8

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1453
    const/4 v1, 0x7

    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->getLikeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v3, v2, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Ljava/lang/String;Landroid/view/View;)V

    .line 1456
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/game/p;

    invoke-direct {v3, p0, v0, p2, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/p;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/n;Landroid/widget/TextView;Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1463
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->getState()Ljava/lang/String;

    move-result-object v1

    .line 1464
    const/16 v0, 0x9

    const-class v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1465
    const-string v2, "distillate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1466
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1467
    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1470
    :goto_1
    return-void

    .line 1422
    :cond_0
    const-string v3, "female"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1423
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 1425
    :cond_1
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 1429
    :cond_2
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1430
    const-string v3, "official"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1431
    invoke-virtual {p0, v5, v6}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(IZ)Landroid/view/View;

    .line 1432
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 1433
    :cond_3
    const-string v3, "doyen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1434
    invoke-virtual {p0, v5, v6}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(IZ)Landroid/view/View;

    .line 1435
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 1437
    :cond_4
    invoke-virtual {p0, v5, v5}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(IZ)Landroid/view/View;

    goto/16 :goto_0

    .line 1468
    :cond_5
    const-string v2, "hot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1469
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1470
    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1472
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 399
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0c031e
        0x7f0c031f
        0x7f0c0320
        0x7f0c0321
        0x7f0c0322
        0x7f0c0323
        0x7f0c0326
        0x7f0c0327
        0x7f0c0328
        0x7f0c0325
    .end array-data
.end method
