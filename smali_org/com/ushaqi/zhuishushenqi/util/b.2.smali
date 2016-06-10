.class final Lcom/ushaqi/zhuishushenqi/util/b;
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
        "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/a;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 95
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/MenuAd;

    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/MenuAd;

    .line 1098
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->getSettings()Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;->getReaderMenuPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->getSettings()Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;->getReaderMenuPriority()I

    move-result v1

    sub-int/2addr v0, v1

    .line 95
    return v0
.end method
