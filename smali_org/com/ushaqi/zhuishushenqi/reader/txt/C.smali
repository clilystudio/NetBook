.class final Lcom/ushaqi/zhuishushenqi/reader/txt/C;
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
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/n;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 0

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/C;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/C;->b:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1392
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 2395
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/C;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 2396
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/C;->b:Lcom/ushaqi/zhuishushenqi/reader/n;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/D;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/D;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/C;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->b(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 1392
    return-void
.end method
