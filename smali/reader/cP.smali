.class public final Lcom/ushaqi/zhuishushenqi/reader/cP;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/cM;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/cM;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cP;->a:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    .locals 2

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->V(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/cP;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 86
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    .line 1101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cP;->a:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/cM;->b(Lcom/ushaqi/zhuishushenqi/reader/cM;)Lcom/ushaqi/zhuishushenqi/reader/cQ;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cP;->a:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/cM;->a(Lcom/ushaqi/zhuishushenqi/reader/cM;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/reader/cQ;->a(Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;[Ljava/lang/String;)V

    .line 86
    return-void
.end method
