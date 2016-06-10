.class final Lcom/ushaqi/zhuishushenqi/reader/txt/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ushaqi/zhuishushenqi/reader/e",
        "<",
        "Lcom/ushaqi/zhuishushenqi/reader/n;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/t;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1153
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 2156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/t;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 2157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/t;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2158
    if-eqz p1, :cond_0

    .line 2159
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->d()[Ljava/lang/Object;

    move-result-object v1

    .line 2160
    if-eqz v1, :cond_0

    .line 2161
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/t;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    aget-object v0, v1, v3

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2162
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/t;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 2163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/t;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Z)V

    .line 1153
    :cond_0
    return-void
.end method
