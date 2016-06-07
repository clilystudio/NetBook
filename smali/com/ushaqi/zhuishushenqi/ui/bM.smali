.class final Lcom/ushaqi/zhuishushenqi/ui/bM;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;B)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bM;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;
    .locals 1

    .prologue
    .line 402
    :try_start_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/bM;->c()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b()Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/bM;->a()Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 398
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;

    .line 1411
    if-eqz p1, :cond_1

    .line 1412
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;->getHotWords()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 1414
    new-instance v6, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    invoke-direct {v6}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;-><init>()V

    .line 1415
    iput v1, v6, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    .line 1416
    iput-object v5, v6, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content:Ljava/lang/String;

    .line 1417
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1419
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->e:Ljava/lang/String;

    const-string v3, "search_hotword.txt"

    invoke-static {v2, v0, v3}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1422
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;->getHotWords()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->setWords([Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bN;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bN;-><init>(Lcom/ushaqi/zhuishushenqi/ui/bM;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->setOnItemClickListener(Lcom/ushaqi/zhuishushenqi/widget/i;)V

    .line 1430
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bO;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bO;-><init>(Lcom/ushaqi/zhuishushenqi/ui/bM;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1437
    :goto_1
    return-void

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const-string v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff01"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
