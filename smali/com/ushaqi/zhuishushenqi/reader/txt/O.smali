.class final Lcom/ushaqi/zhuishushenqi/reader/txt/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ushaqi/zhuishushenqi/reader/txt/T;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 120
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    check-cast p2, Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    .line 1123
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 120
    return v0
.end method
