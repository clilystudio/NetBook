.class final Lcom/ushaqi/zhuishushenqi/ui/user/Z;
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
        "Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;B)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/Z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;->getOrders()[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;->getOrders()[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 150
    check-cast p1, Ljava/util/List;

    .line 1167
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1168
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    if-eqz p1, :cond_3

    .line 1170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1171
    if-lez v0, :cond_2

    .line 1172
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->f()V

    .line 1174
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1175
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/ui/user/S;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a(Ljava/util/List;)V

    .line 1176
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    goto :goto_0

    .line 1181
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->g()V

    goto :goto_0

    .line 1185
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->h()V

    goto :goto_0
.end method
