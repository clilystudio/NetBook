.class final Lcom/ushaqi/zhuishushenqi/reader/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 138
    :sswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/ushaqi/zhuishushenqi/exception/UnImplementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;->printStackTrace()V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :sswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "reader_menu_topic"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    const-string v1, "extra_sort_type"

    const-string v2, "created"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 154
    new-instance v0, Lcom/ushaqi/zhuishushenqi/a/f;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/a/f;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/a/f;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V

    goto :goto_0

    .line 159
    :sswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->i(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V

    goto/16 :goto_0

    .line 163
    :sswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bs;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i()V

    goto/16 :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x7f0c0034 -> :sswitch_0
        0x7f0c0045 -> :sswitch_0
        0x7f0c024c -> :sswitch_1
        0x7f0c024f -> :sswitch_2
        0x7f0c0253 -> :sswitch_3
    .end sparse-switch
.end method
