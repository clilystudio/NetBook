.class final Lcom/ushaqi/zhuishushenqi/reader/aC;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/aB;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/aB;)V
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aC;->a:Lcom/ushaqi/zhuishushenqi/reader/aB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1263
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 2266
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aC;->a:Lcom/ushaqi/zhuishushenqi/reader/aB;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/aB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 2267
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aC;->a:Lcom/ushaqi/zhuishushenqi/reader/aB;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/aB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 1263
    return-void
.end method
