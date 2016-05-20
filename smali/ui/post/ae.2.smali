.class final Lcom/ushaqi/zhuishushenqi/ui/post/ae;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;B)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/ae;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;
    .locals 2

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->E(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 122
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;

    .line 1136
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1138
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;->getHelp()Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f()V

    .line 1140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;->getHelp()Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;Lcom/ushaqi/zhuishushenqi/model/BookHelp;)Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    .line 1141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;Lcom/ushaqi/zhuishushenqi/model/BookHelp;)V

    .line 1143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->getCommentCount()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)V

    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h()V

    goto :goto_0
.end method
