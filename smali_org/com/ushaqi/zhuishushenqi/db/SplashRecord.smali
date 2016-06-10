.class public Lcom/ushaqi/zhuishushenqi/db/SplashRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "SplashRecord"
.end annotation


# instance fields
.field public end:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "end"
    .end annotation
.end field

.field public img3x4:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "img3x4"
    .end annotation
.end field

.field public insideLink:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "insideLink"
    .end annotation
.end field

.field public isShow:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "isShow"
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "link"
    .end annotation
.end field

.field public splashId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "splashId"
        unique = true
    .end annotation
.end field

.field public start:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "start"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->isShow:Z

    .line 51
    return-void
.end method

.method public static create(Lcom/ushaqi/zhuishushenqi/model/Splash;)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Splash;->get_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->splashId:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Splash;->getLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->link:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Splash;->getImg3x4()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->img3x4:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Splash;->getInsideLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->insideLink:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Splash;->getStart()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->start:Ljava/util/Date;

    .line 75
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Splash;->getEnd()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->end:Ljava/util/Date;

    .line 76
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->save()Ljava/lang/Long;

    .line 77
    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "splashId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 81
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/SplashRecord;
    .locals 4

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "splashId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    goto :goto_0
.end method

.method public static getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/SplashRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllNotShow()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/SplashRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "isShow = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
