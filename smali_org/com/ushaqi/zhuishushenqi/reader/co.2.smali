.class final Lcom/ushaqi/zhuishushenqi/reader/co;
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
        "Lcom/ushaqi/zhuishushenqi/reader/cs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 122
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/cs;

    check-cast p2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1125
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget v1, p2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    sub-int/2addr v0, v1

    .line 122
    return v0
.end method
