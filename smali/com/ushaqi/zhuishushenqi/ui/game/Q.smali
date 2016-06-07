.class final Lcom/ushaqi/zhuishushenqi/ui/game/Q;
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


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    .line 148
    const v0, 0x7f0300ed

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 149
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 145
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 1163
    const/4 v0, 0x0

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1164
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setDrawingCacheEnabled(Z)V

    .line 1165
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 1166
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1167
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1168
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

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1169
    const/4 v0, 0x4

    const-class v1, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    .line 1170
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 1171
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setH5View()V

    .line 1173
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/R;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/R;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/Q;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    .line 1180
    :cond_0
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a(I)V

    goto :goto_0
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 153
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
