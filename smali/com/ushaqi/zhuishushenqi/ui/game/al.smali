.class final Lcom/ushaqi/zhuishushenqi/ui/game/al;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/Game;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 192
    const v0, 0x7f0300ed

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 193
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 189
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 1207
    const/4 v0, 0x0

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/al;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1208
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setDrawingCacheEnabled(Z)V

    .line 1209
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 1210
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/al;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1211
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/al;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1212
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getFollowers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4eba\u5728\u73a9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/al;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1213
    const/4 v0, 0x4

    const-class v1, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/al;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    .line 1214
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 1215
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a(I)V

    .line 189
    return-void
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c0317
        0x7f0c031b
        0x7f0c0319
        0x7f0c031c
        0x7f0c031a
    .end array-data
.end method
