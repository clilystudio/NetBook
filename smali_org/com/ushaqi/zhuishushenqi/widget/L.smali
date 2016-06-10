.class final Lcom/ushaqi/zhuishushenqi/widget/L;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/L;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;B)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/L;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;
    .locals 2

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->ab(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/widget/L;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x0

    .line 39
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;

    .line 1053
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1054
    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;->ok:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;->gifts:[Lcom/ushaqi/zhuishushenqi/model/GameGift;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;->gifts:[Lcom/ushaqi/zhuishushenqi/model/GameGift;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/L;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    const v2, 0x7f0c0266

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/L;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    const v2, 0x7f0c0267

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object v5, p1, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;->gifts:[Lcom/ushaqi/zhuishushenqi/model/GameGift;

    .line 1058
    array-length v1, v5

    .line 1059
    if-le v1, v0, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/L;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    invoke-static {v1, p1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;)V

    move v1, v0

    .line 1064
    :cond_0
    const/4 v2, 0x2

    move v3, v4

    .line 1065
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1066
    aget-object v6, v5, v3

    .line 1067
    iget-object v0, v6, Lcom/ushaqi/zhuishushenqi/model/GameGift;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/L;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v7, 0x7f0300ef

    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/widget/L;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    invoke-virtual {v0, v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1071
    const v0, 0x7f0c0329

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;

    .line 1072
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/widget/L;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;)Z

    move-result v8

    invoke-virtual {v0, v6, v8}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a(Lcom/ushaqi/zhuishushenqi/model/GameGift;Z)V

    .line 1073
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/L;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    invoke-virtual {v0, v7, v2}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->addView(Landroid/view/View;I)V

    .line 1074
    add-int/lit8 v0, v2, 0x1

    .line 1065
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 39
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method
