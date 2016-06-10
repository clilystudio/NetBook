.class public Lcom/ushaqi/zhuishushenqi/db/DownloadItem;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "DownloadItem"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "package_name"
    .end annotation
.end field

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;->packageName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static existsInDb(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;

    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    const-string v3, "package_name=?"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v2

    invoke-virtual {v2}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
