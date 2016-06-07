.class final Lcom/ushaqi/zhuishushenqi/ui/user/af;
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
        "Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 140
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 138
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->a:Z

    .line 141
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->a:Z

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;Z)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->a:Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->a:Z

    .line 146
    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tag_index_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "token_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    .line 154
    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;->getVouchers()[Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;->getVouchers()[Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/af;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 137
    check-cast p1, Ljava/util/List;

    .line 1166
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1167
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1172
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1173
    if-eqz p1, :cond_3

    .line 1174
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->a:Z

    if-nez v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1177
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1178
    if-lez v1, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->a(Ljava/util/List;)V

    .line 1181
    const/16 v0, 0xa

    if-lt v1, v0, :cond_2

    .line 1184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1193
    :goto_0
    return-void

    .line 1187
    :cond_1
    if-eqz v0, :cond_2

    .line 1188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1190
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
