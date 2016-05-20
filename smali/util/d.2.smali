.class final Lcom/ushaqi/zhuishushenqi/util/d;
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
        "Lcom/ushaqi/zhuishushenqi/model/Advert;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/c;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 157
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Advert;

    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/Advert;

    .line 1160
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    .line 157
    return v0
.end method
