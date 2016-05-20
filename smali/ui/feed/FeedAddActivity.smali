.class public Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/feed/c;

.field private b:Landroid/widget/ListView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)V
    .locals 4

    .prologue
    .line 30
    .line 1103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    const-string v0, "\u4f60\u8fd8\u6ca1\u6709\u9009\u62e9\u79fb\u5165\u7684\u4e66\u7c4d"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1107
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setFeeding(Z)V

    .line 1109
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getChapterCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setChapterCountAtFeed(I)V

    .line 1110
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 1112
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v2

    new-instance v3, Lcom/ushaqi/zhuishushenqi/event/l;

    invoke-direct {v3, v0}, Lcom/ushaqi/zhuishushenqi/event/l;-><init>(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    invoke-virtual {v2, v3}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 1114
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1115
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1116
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Lcom/ushaqi/zhuishushenqi/ui/feed/c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/c;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f05010f

    const v1, 0x7f050107

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/feed/a;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/a;-><init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 48
    const v0, 0x7f0c0104

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->b:Landroid/widget/ListView;

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/feed/b;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/b;-><init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onResume()V

    .line 1073
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/feed/c;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/c;-><init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/c;

    .line 1074
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/c;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1094
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllWithTopNoFeed()Ljava/util/List;

    move-result-object v0

    .line 1095
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/c;

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->a(Ljava/util/Collection;)V

    .line 1096
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1077
    :goto_0
    const v2, 0x7f0c0102

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1078
    const v3, 0x7f0c0105

    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1079
    if-eqz v0, :cond_1

    .line 1080
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    return-void

    :cond_0
    move v0, v1

    .line 1096
    goto :goto_0

    .line 1083
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
