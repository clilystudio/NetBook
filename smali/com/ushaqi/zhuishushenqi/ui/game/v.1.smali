.class final Lcom/ushaqi/zhuishushenqi/ui/game/v;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;B)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/v;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)V

    return-void
.end method

.method private static varargs a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 155
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(II)Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;->ok:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;->games:[Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    if-eqz v1, :cond_4

    .line 157
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;->games:[Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    .line 161
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 162
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    .line 164
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;-><init>()V

    .line 165
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setType(I)V

    .line 166
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 167
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v10, v0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->gifts:[Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    .line 169
    if-eqz v10, :cond_2

    array-length v1, v10

    if-eqz v1, :cond_2

    .line 173
    array-length v1, v10

    .line 174
    if-le v1, v2, :cond_0

    move v1, v2

    move v3, v4

    :goto_1
    move v7, v5

    .line 180
    :goto_2
    if-ge v7, v1, :cond_1

    .line 181
    new-instance v11, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    invoke-direct {v11}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;-><init>()V

    .line 182
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setType(I)V

    .line 183
    aget-object v12, v10, v7

    invoke-virtual {v11, v12}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setGift(Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;)V

    .line 184
    invoke-virtual {v11, v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 185
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    move v3, v5

    .line 178
    goto :goto_1

    .line 187
    :cond_1
    if-eqz v3, :cond_2

    .line 188
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;-><init>()V

    .line 189
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setType(I)V

    .line 190
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 191
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 199
    :goto_3
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 199
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 150
    check-cast p1, Ljava/util/List;

    .line 1204
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1205
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1208
    if-eqz p1, :cond_2

    .line 1209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->c()V

    .line 1211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;Ljava/util/List;)Ljava/util/List;

    .line 1212
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->a(Ljava/util/List;)V

    .line 1213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)V

    .line 1215
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->d()V

    goto :goto_0

    .line 1218
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/v;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->e()V

    goto :goto_0
.end method
