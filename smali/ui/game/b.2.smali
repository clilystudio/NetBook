.class final Lcom/ushaqi/zhuishushenqi/ui/game/b;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/GameCat;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f0300ec

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 133
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 129
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/GameCat;

    .line 1145
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/GameCat;->getGames()[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v3

    .line 1146
    array-length v0, v3

    if-lez v0, :cond_2

    .line 1147
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1148
    invoke-virtual {v0, v6}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setDrawingCacheEnabled(Z)V

    .line 1149
    aget-object v4, v3, v2

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020106

    invoke-virtual {v0, v4, v5}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 1150
    array-length v0, v3

    if-le v0, v1, :cond_0

    move v0, v1

    .line 1151
    :goto_0
    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    .line 1152
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1153
    aget-object v2, v3, v1

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1150
    :cond_0
    array-length v0, v3

    goto :goto_0

    .line 1155
    :cond_1
    const/4 v0, 0x2

    const-string v1, "\u3001"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/b;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1157
    :cond_2
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/GameCat;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/b;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 129
    return-void
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c0317
        0x7f0c0318
        0x7f0c0319
    .end array-data
.end method
