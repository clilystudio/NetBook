.class public final Lcom/ushaqi/zhuishushenqi/util/X;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ushaqi/zhuishushenqi/api/ApiService;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/X;->b:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/X;->c:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/util/X;->e:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    .line 26
    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/util/X;->d:[Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/X;->a:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    .line 28
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/X;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/X;->d:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    const-string v0, ""

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/X;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/X;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/X;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs b()Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 3

    .prologue
    .line 44
    :try_start_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/Y;->a:[I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/X;->e:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/X;->a:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/X;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/X;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->G(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;

    move-result-object v0

    goto :goto_1

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/X;->a:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/X;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/X;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;

    move-result-object v0

    goto :goto_1

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/X;->a:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/X;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/X;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;

    move-result-object v0

    goto :goto_1

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/X;->a:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/X;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/X;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/X;->b()Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 15
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;

    .line 1062
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1063
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/X;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1065
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/X;->b:Ljava/lang/String;

    .line 1073
    sget-object v5, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SYNC_SUCCESS:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    .line 1074
    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getTypeId(Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)I

    move-result v5

    .line 1073
    invoke-static {v4, v3, v5}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->updateOrCreate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method
